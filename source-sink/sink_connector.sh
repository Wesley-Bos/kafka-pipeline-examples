curl -i -X PUT http://localhost:8083/connectors/SINK_POSTGRES/config \
     -H "Content-Type: application/json" \
     -d '{
            "connector.class":"io.confluent.connect.jdbc.JdbcSinkConnector",
            "connection.url":"jdbc:postgresql://postgres:5432/numbers",
            "connection.user":"pxl",
            "connection.password":"password",
            "insert.mode":"insert",
	    "auto.create":true,
	    "topics":"P_NUMBER",
	    "tasks.max":1

        }'
