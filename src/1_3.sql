create table T(A text unique on conflict ignore);
insert into T values('A');
begin;
insert into T values('B');
insert into T values('B');
insert into T values('C');
end;
select * from T;

