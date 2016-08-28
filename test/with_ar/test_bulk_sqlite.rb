require 'helper'

module ArelExtensions
  module WthAr

    describe 'the sqlite visitor' do

      before do
        ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
        @cnx = ActiveRecord::Base.connection
        @cnx.drop_table(:users) rescue nil 
        @cnx.create_table :users do |t|
          t.column :age, :integer
          t.column :name, :string
          t.column :comments, :text
          t.column :created_at, :date
          t.column :updated_at, :date
          t.column :score, :floor
        end
        @cnx.create_table :products do |t|
          t.column :price, :decimal
        end
        @table = Arel::Table.new(:users)
        @cols = ['id', 'name', 'comments', 'created_at']
        @data = [
              [23, 'nom1', "sdfdsfdsfsdf", '2016-01-01'],
              [25, 'nom2', "sdfdsfdsfsdf", '2016-01-01']
        ]
      end
      after do
        @cnx.drop_table(:users)
      end

      it "should import large set of data" do
        insert_manager = Arel::InsertManager.new(ActiveRecord::Base).into(@table)
        insert_manager.bulk_insert(@cols, @data)
        sql = insert_manager.to_sql
        sql.must_be_like %Q[INSERT INTO "users" ("id", "name", "comments", "created_at") VALUES (23, 'nom1', 'sdfdsfdsfsdf', '2016-01-01'), (25, 'nom2', 'sdfdsfdsfsdf', '2016-01-01')]
      end

    end

  end
end