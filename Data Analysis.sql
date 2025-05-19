-- Data Analysis

SELECT *
FROM model_data2;

-- Total Layoff by year

select YEAR(`date`) ,sum(total_laid_off) AS total_layoff
from model_data2
where YEAR(`date`) is not null
group by YEAR(`date`)
order by YEAR(`date`) ;

-- Total layoff by month

select substring(`date`,1,7) as `Month`,sum(total_laid_off) as total_layoff
from model_data2
where substring(`date`,1,7) is not null
group by `Month`
order by `Month`;

-- Top 10 companies with most layoff

select company,sum(total_laid_off) AS Total_layoff
from model_data2
group by company
order by Total_layoff DESC
limit 10;

-- Top 10 industry with most layoff

select industry,sum(total_laid_off) AS Total_layoff
from model_data2
group by industry
order by Total_layoff DESC
limit 10;

-- Top 10 country with most layoff

select country,sum(total_laid_off) AS Total_layoff
from model_data2
group by country
order by Total_layoff DESC
limit 10;

-- companies with 100% layoffs

select company,percentage_laid_off
from model_data2
where percentage_laid_off = 1;

-- Year by Year layoff change

with yoy as(
select YEAR(`date`) as `year`,sum(total_laid_off)as  total_layoff,avg(total_laid_off)as avg_company_layoff
from model_data2
where  YEAR(`date`) is not null
group by `year`
)
select `year`,total_layoff,sum(total_layoff)over(order by `year`)as yby,avg_company_layoff
from yoy;
