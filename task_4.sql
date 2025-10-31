-- task_4.sql
SELECT 
    COLUMN_NAME AS `Column`,
    COLUMN_TYPE AS `Type`,
    IS_NULLABLE AS `Null`,
    COLUMN_DEFAULT AS `Default`,
    COLUMN_KEY AS `Key`,
    EXTRA AS `Extra`
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE()   -- uses the current database passed in mysql command
    AND TABLE_NAME = 'Books'
ORDER BY 
    ORDINAL_POSITION;
