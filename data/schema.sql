/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  lfrz
 * Created: 2024年3月27日
 */
DROP DATABASE IF EXISTS FWRP;
CREATE DATABASE FWRP;
USE FWRP;

CREATE TABLE User (
    uid int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username varchar(100) NOT NULL,
    name varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    password varchar(100) NOT NULL,
    userType int NOT NULL
);

CREATE TABLE Inventory (
    uid int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL,
    location varchar(100) NOT NULL,
    owner varchar(100) NOT NULL,
    quantity int NOT NULL,
    price int NOT NULL
);

CREATE TABLE SurplusFood (
    uid int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL,
    location varchar(100) NOT NULL,
    owner varchar(100) NOT NULL,
    quantity int NOT NULL,
    price int NOT NULL
);

