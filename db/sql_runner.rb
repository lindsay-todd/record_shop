require('pg')
require_relative('../db/sql_runner')

class SqlRunner
    def self.run(sql, values = [])
        begin
            db = PG.connect({ dbname: 'record_shop', host: 'localhost' })
            db.prepare("query", sql)
            result = db.exec_prepared( "query", values)
        ensure
            db.close() if db != nil
        end
        return result
    end
end