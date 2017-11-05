create database ProyectoIntegrador_II;

use ProyectoIntegrador_II;

create table paises (
  codigo_pais varchar(2) NOT NULL,
  nombre_pais varchar(100) NOT NULL,
  PRIMARY KEY (codigo_pais)
);

INSERT INTO paises VALUES
('AU', 'Australia'),
('CN', 'China'),
('JP', 'Japan'),
('TH', 'Thailand'),
('IN', 'India'),
('MY', 'Malaysia'),
('KR', 'Kore'),
('HK', 'Hong Kong'),
('TW', 'Taiwan'),
('PH', 'Philippines'),
('VN', 'Vietnam'),
('FR', 'France'),
('EU', 'Europe'),
('DE', 'Germany'),
('SE', 'Sweden'),
('IT', 'Italy'),
('GR', 'Greece'),
('ES', 'Spain'),
('AT', 'Austria'),
('GB', 'United Kingdom'),
('NL', 'Netherlands'),
('BE', 'Belgium'),
('CH', 'Switzerland'),
('AE', 'United Arab Emirates'),
('IL', 'Israel'),
('UA', 'Ukraine'),
('RU', 'Russian Federation'),
('KZ', 'Kazakhstan'),
('PT', 'Portugal'),
('SA', 'Saudi Arabia'),
('DK', 'Denmark'),
('IR', 'Ira'),
('NO', 'Norway'),
('US', 'United States'),
('MX', 'Mexico'),
('CA', 'Canada'),
('A1', 'Anonymous Proxy'),
('SY', 'Syrian Arab Republic'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('IQ', 'Iraq'),
('TR', 'Turkey'),
('RO', 'Romania'),
('LB', 'Lebanon'),
('HU', 'Hungary'),
('GE', 'Georgia'),
('BR', 'Brazil'),
('AZ', 'Azerbaijan'),
('A2', 'Satellite Provider'),
('PS', 'Palestinian Territory'),
('LT', 'Lithuania'),
('OM', 'Oman'),
('SK', 'Slovakia'),
('RS', 'Serbia'),
('FI', 'Finland'),
('IS', 'Iceland'),
('BG', 'Bulgaria'),
('SI', 'Slovenia'),
('MD', 'Moldov'),
('MK', 'Macedonia'),
('LI', 'Liechtenstein'),
('JE', 'Jersey'),
('PL', 'Poland'),
('HR', 'Croatia'),
('BA', 'Bosnia and Herzegovina'),
('EE', 'Estonia'),
('LV', 'Latvia'),
('JO', 'Jordan'),
('KG', 'Kyrgyzstan'),
('RE', 'Reunion'),
('IE', 'Ireland'),
('LY', 'Libya'),
('LU', 'Luxembourg'),
('AM', 'Armenia'),
('VG', 'Virgin Island'),
('YE', 'Yemen'),
('BY', 'Belarus'),
('GI', 'Gibraltar'),
('MQ', 'Martinique'),
('PA', 'Panama'),
('DO', 'Dominican Republic'),
('GU', 'Guam'),
('PR', 'Puerto Rico'),
('VI', 'Virgin Island'),
('MN', 'Mongolia'),
('NZ', 'New Zealand'),
('SG', 'Singapore'),
('ID', 'Indonesia'),
('NP', 'Nepal'),
('PG', 'Papua New Guinea'),
('PK', 'Pakistan'),
('AP', 'Asia/Pacific Region'),
('BS', 'Bahamas'),
('LC', 'Saint Lucia'),
('AR', 'Argentina'),
('BD', 'Bangladesh'),
('TK', 'Tokelau'),
('KH', 'Cambodia'),
('MO', 'Macau'),
('MV', 'Maldives'),
('AF', 'Afghanistan'),
('NC', 'New Caledonia'),
('FJ', 'Fiji'),
('WF', 'Wallis and Futuna'),
('QA', 'Qatar'),
('AL', 'Albania'),
('BZ', 'Belize'),
('UZ', 'Uzbekistan'),
('KW', 'Kuwait'),
('ME', 'Montenegro'),
('PE', 'Peru'),
('BM', 'Bermuda'),
('CW', 'Curacao'),
('CO', 'Colombia'),
('VE', 'Venezuela'),
('CL', 'Chile'),
('EC', 'Ecuador'),
('ZA', 'South Africa'),
('IM', 'Isle of Man'),
('BO', 'Bolivia'),
('GG', 'Guernsey'),
('MT', 'Malta'),
('TJ', 'Tajikistan'),
('SC', 'Seychelles'),
('BH', 'Bahrain'),
('EG', 'Egypt'),
('ZW', 'Zimbabwe'),
('LR', 'Liberia'),
('KE', 'Kenya'),
('GH', 'Ghana'),
('NG', 'Nigeria'),
('TZ', 'Tanzani'),
('ZM', 'Zambia'),
('MG', 'Madagascar'),
('AO', 'Angola'),
('NA', 'Namibia'),
('CI', 'Cote D''Ivoire'),
('SD', 'Sudan'),
('CM', 'Cameroon'),
('MW', 'Malawi'),
('GA', 'Gabon'),
('ML', 'Mali'),
('BJ', 'Benin'),
('TD', 'Chad'),
('BW', 'Botswana'),
('CV', 'Cape Verde'),
('RW', 'Rwanda'),
('CG', 'Congo'),
('UG', 'Uganda'),
('MZ', 'Mozambique'),
('GM', 'Gambia'),
('LS', 'Lesotho'),
('MU', 'Mauritius'),
('MA', 'Morocco'),
('DZ', 'Algeria'),
('GN', 'Guinea'),
('CD', 'Cong'),
('SZ', 'Swaziland'),
('BF', 'Burkina Faso'),
('SL', 'Sierra Leone'),
('SO', 'Somalia'),
('NE', 'Niger'),
('CF', 'Central African Republic'),
('TG', 'Togo'),
('BI', 'Burundi'),
('GQ', 'Equatorial Guinea'),
('SS', 'South Sudan'),
('SN', 'Senegal'),
('MR', 'Mauritania'),
('DJ', 'Djibouti'),
('KM', 'Comoros'),
('IO', 'British Indian Ocean Territory'),
('TN', 'Tunisia'),
('GL', 'Greenland'),
('VA', 'Holy See (Vatican City State)'),
('CR', 'Costa Rica'),
('KY', 'Cayman Islands'),
('JM', 'Jamaica'),
('GT', 'Guatemala'),
('MH', 'Marshall Islands'),
('AQ', 'Antarctica'),
('BB', 'Barbados'),
('AW', 'Aruba'),
('MC', 'Monaco'),
('AI', 'Anguilla'),
('KN', 'Saint Kitts and Nevis'),
('GD', 'Grenada'),
('PY', 'Paraguay'),
('MS', 'Montserrat'),
('TC', 'Turks and Caicos Islands'),
('AG', 'Antigua and Barbuda'),
('TV', 'Tuvalu'),
('PF', 'French Polynesia'),
('SB', 'Solomon Islands'),
('VU', 'Vanuatu'),
('ER', 'Eritrea'),
('TT', 'Trinidad and Tobago'),
('AD', 'Andorra'),
('HT', 'Haiti'),
('SH', 'Saint Helena'),
('FM', 'Micronesi'),
('SV', 'El Salvador'),
('HN', 'Honduras'),
('UY', 'Uruguay'),
('LK', 'Sri Lanka'),
('EH', 'Western Sahara'),
('CX', 'Christmas Island'),
('WS', 'Samoa'),
('SR', 'Suriname'),
('CK', 'Cook Islands'),
('KI', 'Kiribati'),
('NU', 'Niue'),
('TO', 'Tonga'),
('TF', 'French Southern Territories'),
('YT', 'Mayotte'),
('NF', 'Norfolk Island'),
('BN', 'Brunei Darussalam'),
('TM', 'Turkmenistan'),
('PN', 'Pitcairn Islands'),
('SM', 'San Marino'),
('AX', 'Aland Islands'),
('FO', 'Faroe Islands'),
('SJ', 'Svalbard and Jan Mayen'),
('CC', 'Cocos (Keeling) Islands'),
('NR', 'Nauru'),
('GS', 'South Georgia and the South Sandwich Islands'),
('UM', 'United States Minor Outlying Islands'),
('GW', 'Guinea-Bissau'),
('PW', 'Palau'),
('AS', 'American Samoa'),
('BT', 'Bhutan'),
('GF', 'French Guiana'),
('GP', 'Guadeloupe'),
('MF', 'Saint Martin'),
('VC', 'Saint Vincent and the Grenadines'),
('PM', 'Saint Pierre and Miquelon'),
('BL', 'Saint Barthelemy'),
('DM', 'Dominica'),
('ST', 'Sao Tome and Principe'),
('KP', 'Kore'),
('FK', 'Falkland Islands (Malvinas)'),
('MP', 'Northern Mariana Islands'),
('TL', 'Timor-Leste'),
('BQ', 'Bonair'),
('MM', 'Myanmar'),
('NI', 'Nicaragua'),
('SX', 'Sint Maarten (Dutch part)'),
('GY', 'Guyana'),
('LA', 'Lao People''s Democratic Republic'),
('CU', 'Cuba'),
('ET', 'Ethiopia');

select * from paises order by nombre_pais asc;

create table tipo_documento(
codigo_doc varchar(2) not null,
tipo_doc varchar(50) not null,
primary key(codigo_doc)
);

insert into tipo_documento values('D1', 'DNI'), ('D2','CE'), ('D3','RUC'),('D4', 'Pasaporte');

create table usuarios(
id_usuario int not null primary key auto_increment,
nom_usuario varchar(50) not null,
ape_usuario varchar(50) not null,
fecha_nac date not null,
correo_usuario varchar(50) not null,
pass_usuario varchar(50) not null,
codigo_pais varchar(2) NOT NULL,
codigo_doc varchar(2) not null,
tipo_doc varchar(10) not null,
num_doc varchar(20) null,
admin bit not null default 0,
bloqueado bit not null default 0,
num_intentos int not null default 3,
check(admin in(0,1)),
check(bloqueado in(0,1)),
check (num_intentos>0),
foreign key (codigo_pais) references paises(codigo_pais),
foreign key (codigo_doc) references tipo_documento(codigo_doc)
);

insert into usuarios values(null,'Marcelo', 'Sbrollini', '1997-10-06','admin@hotmail.com', 'adminMarcelo', 'PE', 'D1','DNI','72628132',1,0,3);
insert into usuarios(id_usuario, nom_usuario, ape_usuario, fecha_nac, correo_usuario, pass_usuario, codigo_pais, codigo_doc, num_doc) values (null,'aaaa', 'bbbb', '2017-10-27','cccc@dddd.com', 'abc', 'PE', 'D1','12345678');

select * from usuarios;
select * from usuarios where correo_usuario = 'admin@hotmail.com' && pass_usuario='adminMarcelo';
