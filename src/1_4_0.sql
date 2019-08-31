create table T(A integer primary key, B text unique on conflict replace);
insert into T(A,B) values(1,'A');
begin;
insert into T(A,B) values(2,'B');
insert into T(A,B) values(3,'A');
insert into T(A,B) values(4,'C');
end;
select * from T;

