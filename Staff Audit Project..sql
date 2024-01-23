show tables;
Describe audit;

select * From audit;

Alter Table audit rename column `MyUnknownColumn` to `Staff ID`;
Alter Table audit drop Column `job title`;
select * From audit;

Set SQL_safe_Updates = 0;
start transaction;

Select Replace (gender, 'F', 'Female') as `NO SIGN` From audit;
update audit SET gender =  replace (gender, 'F', 'Female');

Select Replace (gender, 'Femaleemale', 'Female') as `NO SIGN` From audit;
update audit SET gender =  replace (gender, 'Femaleemale', 'Female');

Select Replace (gender, 'M', 'Male') as `NO SIGN` From audit;
update audit SET gender =  replace (gender, 'M', 'Male');

Select Replace (gender, 'Maleale', 'Male') as `NO SIGN` From audit;
update audit SET gender =  replace (gender, 'Maleale', 'Male');

delete from audit where DOB = '';
delete from audit where `job title` = '';

Alter Table audit rename column `past_3_years_bike_related_purchases` to `Past 3 years bike related purchases`;
Alter Table audit rename column `job_industry_category` To `Job Industry Category`;
Alter Table audit rename column `wealth_segment` To `Wealth Segment`;
Alter Table audit rename column `owns_car` To `Owns Car`;

Alter Table audit rename column `first name` to `First Name`;
Alter Table audit rename column gender to Gender;
Alter Table audit rename column `job title` to `Job Title`;

delete from audit where Gender = 'U';

select * From audit;