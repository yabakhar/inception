CREATE DATABASE IF NOT EXISTS yabakhar;
CREATE USER 'yabakhar'@'%' identified  by 'yabakhar';
GRANT ALL PRIVILEGES ON yabakhar.* TO 'yabakhar'@'%';
FLUSH PRIVILEGES;