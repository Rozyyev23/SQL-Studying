DROP  TABLE orders;
DROP TABLE avto;
DROP TABLE masters; 
CREATE TABLE masters

("masters_NO" NUMBER(5,0),

"masters_SN" VARCHAR2(64) NOT NULL ,

"masters_spec" NUMBER(5,0) NOT NULL ,

"masters_exp" VARCHAR2(40) NOT NULL ,

CONSTRAINT "masters_PK" PRIMARY KEY ("masters_NO")

USING INDEX ENABLE

);

CREATE TABLE orders

("masters_NO" NUMBER(5,0),

"orders_avto" VARCHAR2(64) PRIMARY KEY ,

"orders_data" VARCHAR2(64) NOT NULL,

"orders_rem" VARCHAR2(64) NOT NULL,

"orders_cost" VARCHAR2(64) NOT NULL

);

ALTER TABLE orders ADD CONSTRAINT "order_NO_FK" FOREIGN KEY ("masters_NO")

REFERENCES masters ("masters_NO") ENABLE;
CREATE TABLE avto

("avto_NO" VARCHAR2(64) PRIMARY KEY,

"avto_mark" VARCHAR2(64) NOT NULL ,

"avto_colour" VARCHAR2(64) NOT NULL,

"avto_year" VARCHAR2(64) NOT NULL

); 
ALTER TABLE orders ADD CONSTRAINT "avto_NO_FK" FOREIGN KEY ("orders_avto")

REFERENCES avto ("avto_NO") ENABLE;