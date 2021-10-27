
/*Definição de chave primaria

alter table characters_v4 add primary key (Actor/ess);
alter table characters_v4 modify column Actor/ess varchar (100);

/*definição de chave estrangeira

alter table characters_v4 add foreign key (Actor/ess) references got_episodes_v4(Star_1);
alter table characters_v4 modify column Star_1 varchar (100) got_episodes_v4;