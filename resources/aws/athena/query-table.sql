-- Quantidade de mensagens por dia

SELECT context_date, count(1) AS "message_amount" FROM "default"."data_pipeline_demo_enriched" GROUP BY context_date ORDER BY context_date DESC;

-- Quantidade de mensagens por usuário por dia

SELECT user_id, user_username, context_date, count(1) AS "message_amount" FROM "default"."data_pipeline_demo_enriched" GROUP BY user_id, user_username, context_date ORDER BY context_date DESC;

-- Média do tamanho das mensagens por usuário por dia

SELECT user_id, user_username, context_date, CAST(AVG(length(text)) AS INT) AS "average_message_length" FROM "default"."data_pipeline_demo_enriched" GROUP BY user_id, user_username, context_date ORDER BY context_date DESC;