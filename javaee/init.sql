-- 创建数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS gust;
USE gust;

-- 创建用户表
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

-- 插入测试数据
INSERT INTO users (username, email) VALUES
    ('admin', 'admin@example.com'),
    ('zhangsan', 'zhangsan@example.com'),
    ('lisi', 'lisi@example.com'),
    ('wangwu', 'wangwu@example.com'),
    ('zhaoliu', 'zhaoliu@example.com');


-- 创建订单表并与用户表关联
CREATE TABLE orders (
    id int(32) PRIMARY KEY AUTO_INCREMENT,
    order_number varchar(32),
    order_price decimal(10,2),
    user_id int(32),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- 插入订单示例数据
INSERT INTO orders (order_number, order_price, user_id) VALUES
    ('ORDER001', 100.50, 1),
    ('ORDER002', 200.75, 1),
    ('ORDER003', 150.25, 2);


    

-- 完整的表结构现在应该是：
CREATE TABLE customer (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    phone VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    jobs VARCHAR(255),
    create_time DATETIME,
    update_time DATETIME
);


INSERT INTO customer (name, phone, email, address, jobs, create_time, update_time) VALUES 
('张三', '13800138000', 'zhangsan@example.com', '北京市海淀区', '工程师', NOW(), NOW()),
('李四', '13800138001', 'lisi@example.com', '北京市朝阳区', '经理', NOW(), NOW()),
('王五', '13800138002', 'wangwu@example.com', '北京市西城区', '经理', NOW(), NOW()),
('赵六', '13800138003', 'zhaoliu@example.com', '北京市东城区', '经理', NOW(), NOW());


CREATE TABLE  idcard( 
     id INT PRIMARY KEY AUTO_INCREMENT,
     CODE VARCHAR(18)	
);


INSERT INTO idcard(CODE) VALUES('152221198711020624');
INSERT INTO idcard(CODE) VALUES('152221198711020625');
INSERT INTO idcard(CODE) VALUES('152221198711020626');
INSERT INTO idcard(CODE) VALUES('152221198711020627');


CREATE TABLE  person( 
     id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(20),
     age INT,
     sex VARCHAR(2),
     card_id INT UNIQUE
);

INSERT INTO person(name,age,sex,card_id) VALUES('张三',23,'男',1);
INSERT INTO person(name,age,sex,card_id) VALUES('李四',24,'女',2);
INSERT INTO person(name,age,sex,card_id) VALUES('王五',25,'男',3);
INSERT INTO person(name,age,sex,card_id) VALUES('赵六',26,'女',4);







