namespace :db do
  desc "Output all of the database to CSV files"
  task to_csv: :environment do
    csv_directory = File.join(File.dirname(__FILE__), '../csv')

    conn = ActiveRecord::Base.connection.raw_connection

    # http://www.postgresqltutorial.com/postgresql-show-tables/
    table_names_sql = <<-SQL
        SELECT tablename
        FROM pg_catalog.pg_tables
        WHERE
          schemaname != 'pg_catalog' AND
          schemaname != 'information_schema';
    SQL

    names = conn.exec(table_names_sql)

    # https://www.rubydoc.info/gems/pg/PG/Result
    names.each_row do |name|
      name = name[0]
      puts name

      # binding.irb
      File.open(File.join(csv_directory, name + '.csv'), 'w') do |file|
        # https://www.rubydoc.info/gems/pg/PG/Connection#copy_data-instance_method
        conn.copy_data("COPY " + name + " TO STDOUT DELIMITER ',' CSV HEADER;") do
          while row = conn.get_copy_data
            file.puts row
          end
        end
      end
    end

    conn.close
  end

  desc "TODO"
  task seed_from_csv: :environment do
  end

end
