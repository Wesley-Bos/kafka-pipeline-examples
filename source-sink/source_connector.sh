curl -i -X PUT http://localhost:8083/connectors/SOURCE_POSTGRES/config \
     -H "Content-Type: application/json" \
     -d '{
            "connector.class":"io.confluent.connect.jdbc.JdbcSourceConnector",
            "connection.url":"jdbc:postgresql://postgres:5432/numbers",
            "connection.user":"pxl",
            "connection.password":"password",
            "poll.interval.ms":"5500",
            "mode":"incrementing",
            "incrementing.column.name":"index",
            "topic.prefix":"P_",
            "table.whitelist":"NUMBER",
            "validate.non.null":"false"
        }'
