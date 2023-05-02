select * from sales;
select * from people;

select s.SaleDate, p.SPID, s.Amount, s.Customers, s.PID,s.GeoID,p.Team,p.Salesperson from sales as s
join people as p on p.SPID=s.SPID;

select s.SaleDate, p.SPID, s.Amount, s.Customers, s.PID,s.GeoID,p.Team,p.Salesperson, pr.Product,pr.Category,p.Team from sales as s
join people as p on p.SPID=s.SPID
join products as pr on pr.PID=s.PID
where p.team='Jucies';
select s.SaleDate, p.SPID, s.Amount, s.Customers, s.PID,s.GeoID,p.Team,p.Salesperson, pr.Product,pr.Category,p.Team from sales as s
join people as p on p.SPID=s.SPID
join products as pr on pr.PID=s.PID
where p.team='Jucies' and s.amount>500 and s.amount<1000;


select s.SaleDate, p.SPID, s.Amount, s.Customers, s.PID,s.GeoID,p.Team,p.Salesperson, pr.Product,pr.Category,p.Team from sales as s
join people as p on p.SPID=s.SPID
join products as pr on pr.PID=s.PID
where p.team='' and s.amount<=500;



select s.SaleDate, p.SPID, s.Amount, s.Customers, s.PID,s.GeoID,p.Team,p.Salesperson, pr.Product,pr.Category,p.Team from sales as s
join people as p on p.SPID=s.SPID
join products as pr on pr.PID=s.PID
join geo as g on g.GeoID=s.GeoID
where p.team=''  or g.GeoID='g4';


select GeoID, sum(Amount), avg(amount), sum(Boxes) from sales
group by GeoID;

select g.Geo, sum(s.Amount), avg(s.amount), sum(s.Boxes) from sales as s
join geo as g on g.GeoID=s.GeoID
group by g.Geo;

select pr.product,p.team, sum(s.Amount), avg(s.amount), sum(s.Boxes) from sales as s
join people as p on p.SPID=s.SPID
join products as pr on pr.PID=s.PID
where p.team <> ''
group by pr.product, p.team
order by p.team, pr.Product;

select pr.Product , sum(amount) as 'Total amount' from sales as s
join products as pr on pr.PID=s.PID
group by pr.product
order by 'Total amount' desc
limit 10;