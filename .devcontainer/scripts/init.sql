CREATE USER 'vscode'@'%' IDENTIFIED WITH mysql_native_password BY 'vscode';
GRANT ALL PRIVILEGES ON *.* TO 'vscode'@'%';
CREATE DATABASE vscode;
GRANT ALL PRIVILEGES ON vscode.* TO 'vscode'@'%';
FLUSH PRIVILEGES;