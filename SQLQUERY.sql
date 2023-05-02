select * from sales;
select SaleDate, Amount, Boxes, Amount/Boxes from Sales;
select SaleDate, Amount, Boxes,  Amount/Boxes as'key' from Sales;
select * from sales
where amount>10000 and boxes<500
order by Amount desc;
select * from sales
where GeoID='G1'
order by Amount,PID desc;

select * from sales
where amount >10000 and SaleDate>='2022-01-05';

select *from sales
where boxes between 0 and 700;

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of Week'
from sales
where weekday(SaleDate)=4;

select * from people;
select * from people
where team='Delish' or team='Jucies';

select * from people
where team in ('Delish', 'Jucies');

select SaleDate, Amount ,
        case  when amount <1000 then 'under 1k'
              when amount<5000 then 'under 5k'
              when amount <10000 then 'under 10k'
		     else '10k or more'
		end  as 'key'
    from Sales    
              
        