db_ns = namespace :db do

  task :rebuild => :environment do

    db_filename = File.expand_path('../../../db/test.sqlite3', __FILE__)
    if File.exists? db_filename
      File.delete(db_filename)
    end

    schema_filename = File.expand_path('../../../db/schema.rb', __FILE__)
    if File.exists? schema_filename
      File.delete(schema_filename)
    end

    db_ns['db:drop'].execute
    db_ns['db:create'].execute
    db_ns['db:migrate'].execute
    db_ns['db:seed'].execute
  end

end
