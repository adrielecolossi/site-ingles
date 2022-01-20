CREATE TABLE materia(
    id SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL
);

CREATE TABLE flashcard(
    id SERIAL NOT NULL PRIMARY KEY,
    materia INTEGER NOT NULL,
    frente VARCHAR(100000) NOT NULL,
    tras VARCHAR(100000) NOT NULL,
     FOREIGN KEY(materia) REFERENCES materia(id)
);
CREATE TABLE linksite(
    id SERIAL NOT NULL PRIMARY KEY,
    materia INTEGER NOT NULL,
    tipo VARCHAR(100000) NOT NULL,
    linksite VARCHAR(100000) NOT NULL,
     FOREIGN KEY(materia) REFERENCES materia(id)
);
CREATE TABLE exercicio(
    id SERIAL NOT NULL PRIMARY KEY,
    materia INTEGER NOT NULL,
    linksite VARCHAR(100000) NOT NULL,
     FOREIGN KEY(materia) REFERENCES materia(id)
);

INSERT INTO materia(nome) VALUES('Sport verbs');

INSERT INTO flashcard(materia, frente, tras) VALUES( 1, 'Hold / Organize / Compete in / Enter / Take part in', 'A race, a competition, a tournment, a championship');
INSERT INTO flashcard(materia, frente, tras) VALUES(1, 'Do / Take', 'Exercise.');
INSERT INTO flashcard(materia, frente, tras) VALUES( 1, 'Go', 'Sports with -ing that are done outdoors.');
INSERT INTO flashcard( materia, frente, tras) VALUES( 1, 'Play', 'Sports that areconsidered games, team sports and competitive sports');
INSERT INTO flashcard( materia, frente, tras) VALUES( 1, 'Do', 'Exercise, individual and fighting sports, athletics, gymnastics, wightlifting, hobbies or activities we do in our free time');

INSERT INTO exercicio( materia, linksite) VALUES( 1, 'https://www.englishexercises.org/makeagame/viewgame.asp?id=15455');
INSERT INTO exercicio( materia, linksite) VALUES( 1, 'https://agendaweb.org/vocabulary/hobbies-sports-intermediate-level-exercises.html');

INSERT INTO linksite(materia, tipo, linksite) VALUES(1, 'vazio', 'Nenhum link útil');
--INSERT INTO link(materia, tipo, linksite) VALUES(1, 'https://www.englishexercises.org/makeagame/viewgame.asp?id=15455');

INSERT INTO materia(nome) VALUES('On, In and At');

INSERT INTO flashcard(materia, frente, tras) VALUES(2, 'On', 'Days of the week, days of the moth. Dates consisting on month and day. Street. Holidays with "day". The sea. Surface(like a road, floor). Right/left. Start. Public transport, bike, moto. Arrival. Media')
INSERT INTO flashcard(materia, frente, tras) VALUES(2, 'At', 'Time smaller than a day. Holidays without "day". A point(door, crossroad, traffic light). Top, bottom and end of. Seaside. Group activities. Home, work. Shops. Address. *Night')
INSERT INTO flashcard(materia, frente, tras) VALUES(2, 'In', 'Centuries, decades, years, months. Theatre. 3D space like a box. Territory(city, town, state, country). Car/van. Water. Printed material. *Morning, afternoon, evening')
INSERT INTO flashcard(materia, frente, tras) VALUES(2, 'Onto', 'Usado quando algo de move em uma superfície');

INSERT INTO exercicio(materia, linksite) VALUES(2, 'https://agendaweb.org/exercises/grammar/prepositions/time-2');
INSERT INTO exercicio(materia, linksite) VALUES(2, 'https://test-english.com/grammar-points/a1/at-in-on-prepositions-time/');
INSERT INTO exercicio(materia, linksite) VALUES(2, 'https://www.myenglishpages.com/english/grammar-exercise-prepositions-at-on-in.php');
INSERT INTO exercicio(materia, linksite) VALUES(2, 'https://www.englisch-hilfen.de/en/exercises/structures/prepositions_at_in_on_time.htm');
INSERT INTO exercicio(materia, linksite) VALUES(2, 'https://www.perfect-english-grammar.com/time-prepositions-exercise-1.html');
INSERT INTO exercicio(materia, linksite) VALUES(2, 'https://www.englishexercises.org/makeagame/viewgame.asp?id=6259');
INSERT INTO exercicio(materia, linksite) VALUES(2, 'https://speakspeak.com/english-grammar-exercises/intermediate/intermediate-grammar-exercise-prepositions-of-time-at-in-on');

INSERT INTO linksite(materia, tipo, linksite) VALUES(2, 'youtube', 'https://www.youtube.com/watch?v=S0-v8FUEVlM');
INSERT INTO linksite(materia, tipo, linksite) VALUES(2, 'youtube', 'https://www.youtube.com/watch?v=otach7WkN_U');
INSERT INTO linksite(materia, tipo, linksite) VALUES(2, 'youtube', 'https://www.youtube.com/watch?v=eTBLv00Dx3c');
INSERT INTO linksite(materia, tipo, linksite) VALUES(2, 'youtube', 'https://www.youtube.com/watch?v=kIW-HcMJFY8');


INSERT INTO materia( nome) VALUES('Infinitive VS Gerund');

INSERT INTO flashcard(materia, frente, tras) VALUES(3, 'Infinitive' , 'To say why you do something. To say why something exists. After too and enough. After "can not afford" After agree, appear, ask, arrange, choose, decide, expect, fail, learn, teach, prove, help, promise, hope, plan, seem, suppose, want, advice. OBS: Try to - fazer algo difícil, tentar seu melhor e talvez falhar');
INSERT INTO flashcard(materia, frente, tras) VALUES(3, 'Gerund', 'After prepositions. As subjects or objects of a verb. Afteer "It is no good", "It is not worth", "It is no use", "It is a waste of time", "Spend time", "Can not help". After admit, appreciate, avoid, consider, imagine, prevent, resist, tolerate, understand, enjoy, keep, finish, involve, mind, delay, postpone, risk, suggest, miss, practise, regret, stop, know, reccoment, eat. OBS: Try +ing  - fazer algo novo, um experimento, seguir um conselho, mas nada difícil');

INSERT INTO exercicio(materia, linksite) VALUES(3, 'https://www.coladaweb.com/exercicios-resolvidos/exercicios-resolvidos-de-ingles/the-imperative-infinitive-and-gerund');
INSERT INTO exercicio(materia, linksite) VALUES(3, 'https://agendaweb.org/verbs/infinitive_gerund-exercises.html');
INSERT INTO exercicio(materia, linksite) VALUES(3, 'https://www.perfect-english-grammar.com/gerunds-and-infinitives-exercise-3.html');
INSERT INTO exercicio(materia, linksite) VALUES(3, 'https://notapositiva.com/infinitive-exercicios-resolvidos/#');
INSERT INTO exercicio(materia, linksite) VALUES(3, 'http://ingles9999.blogspot.com/p/exercicios-gerund-or-infinitive.html');

INSERT INTO linksite(materia, tipo, linksite) VALUES(3, 'youtube', 'https://www.youtube.com/watch?v=wSKUeL3nUgA');
INSERT INTO linksite(materia, tipo, linksite) VALUES(3, 'youtube','https://www.youtube.com/watch?v=e33GLlbpUzM');

INSERT INTO materia(nome) VALUES('Phrasal Verbs');

INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Pull in' , 'Atrair/prender/encostar/ganhar/controlar');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Carry out' , 'Executar/cumprir/defender');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Get ___ to' , 'Fazer fazer algo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Got ___ into' , 'Colocar em algo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Give ___ a call' , 'Telefonar');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Take over' , 'Tomar o controle/ocupar');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Cater for somebody/something' , 'Prover o que é necessário/quisto por alguem');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Hang around with' , 'Gastar temopo com alguém');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Chill out' , 'Relax completely');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Be up to' , 'Estar fazendo algo/ disposto à fazer/ à altura de/ depender');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Be up for' , 'Estar elegível/ em julgamento/ disposto');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Pop into' , 'Visitar um lugar');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Wear out' , 'Fazer ficar cansado');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Cut down' , 'Fazer menos algo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Cut down on' , 'Reduzir algo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Come up against' , 'Ter que lidar com um problema');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Come up with' , 'Sugerir uma ideia/plano');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Pick ___ up' , 'Coletar');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Go on with' , 'Continuar algo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Do up' , 'Reparar/decorar um lugar para ele ficar atrativo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Clear up' , 'Arrumar');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Take up' , 'Começar uma atividade nova');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Get hold of' , 'Obter algo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Have a go to' , 'Tentar fazer algo');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Not have a clue' , 'Não fazer ideia');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Make up' , 'Dizer/escrever algo que não é verdade');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Get over' , 'Se sentir melhor');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Live up to' , 'Viver de acordo com algo/ Ser tão bom quanto algo/ Persistir');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Hand back' , 'Devolver');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Get away with' , 'Conseguir fugir sme punição');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Point out' , 'Dar uma informação');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Put off' , 'Mesmo que postpone -> Adiar');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Turn out' , 'Descobrir algo surpreendente finalmente');
INSERT INTO flashcard(materia, frente, tras) VALUES(4, 'Take back' , 'Pensar sobre algo no passado');

INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://www.skill.com.br/noticias/ingles/10-exercicios-para-testar-seus-conhecimentos-sobre-phrasal-verbs');
INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://blog.influx.com.br/exercicios-de-ingles-treinando-os-phrasal-verbs');
INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://brasilescola.uol.com.br/ingles/phrasal-verbs.htm');
INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://www.inglesonline.com.br/exercicios-de-ingles/exercicio-phrasal-verbs-verbo-go/');
INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://www.teclasap.com.br/exercicios-com-phrasal-verbs-teste-seus-conhecimentos-1/');
INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://alexandreemerson.com/phrasal-verbs-exercises-com-gabarito/');
INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://www.englishexperts.com.br/forum/exercicio-phrasal-verbs-para-iniciantes-em-ingles-t25918.html');
INSERT INTO exercicio(materia, linksite) VALUES(4, 'https://www.questoesestrategicas.com.br/questoes/busca/assunto/verbos-frasais-phrasal-verbs');

INSERT INTO linksite(materia, tipo, linksite) VALUES(4, 'youtube', 'https://www.youtube.com/watch?v=om6PsDQkk8A');



INSERT INTO materia(nome) VALUES('Despite VS Although VS Whereas VS However');


INSERT INTO flashcard(materia, frente, tras) VALUES(5, 'Despite/In spite of' , 'Apesar de. Sem notar/ sendo influenciado ATENÇÃO!! + ing');
INSERT INTO flashcard(materia, frente, tras) VALUES(5, 'Although/Though/Even though' , 'Embora. Tem um sujeito que faz algo. even though é mais enfático');
INSERT INTO flashcard(materia, frente, tras) VALUES(5, 'Whereas' , 'While');
INSERT INTO flashcard(materia, frente, tras) VALUES(5, 'However' , 'Aparece no começo da frase e se refere à anterior. Mesmo uso de');

INSERT INTO exercicio(materia, linksite) VALUES(5, 'https://learnenglish.britishcouncil.org/grammar/intermediate-to-upper-intermediate/in-spite-of-despite-although-even-though-and-though');
INSERT INTO exercicio(materia, linksite) VALUES(5, 'https://www.grammarbank.com/despite-although-exercise.html');
INSERT INTO exercicio(materia, linksite) VALUES(5, 'https://www.myenglishpages.com/english/grammar-exercise-although.php');

INSERT INTO linksite(materia, tipo, linksite) VALUES(5, 'youtube', 'https://www.youtube.com/watch?v=UFuxlnUeGmg');


INSERT INTO materia(nome) VALUES('Expressions of feeling');

INSERT INTO flashcard(materia, frente, tras) VALUES(6, 'Rub shoulders with', 'Meet/Spend time with');
INSERT INTO flashcard(materia, frente, tras) VALUES(6, 'Rush off the feet', 'Be very busy');
INSERT INTO flashcard(materia, frente, tras) VALUES(6, 'Be throw in at the deep end', 'Start something new/difficult without help/preparation');
INSERT INTO flashcard(materia, frente, tras) VALUES(6, 'Feel a bit off-colour', 'Feel slightly ill');
INSERT INTO flashcard(materia, frente, tras) VALUES(6, 'Get to the bottom of', 'Discover the truth');
INSERT INTO flashcard(materia, frente, tras) VALUES(6, 'Feel very ybder the weather', 'Feel ill/tired');

INSERT INTO exercicio(materia, linksite) VALUES(6, 'Nenhum exercício');

INSERT INTO linksite(materia, tipo, linksite) VALUES(6, 'vazio', 'Nenhum site');

INSERT INTO materia(nome) VALUES('Many VS Much');


INSERT INTO flashcard(materia, frente, tras) VALUES(7, 'Many', 'Countable nouns');
INSERT INTO flashcard(materia, frente, tras) VALUES(7, 'Much', 'Uncountable nouns, just singular');

INSERT INTO exercicio(materia, linksite) VALUES(7, 'https://agendaweb.org/grammar/many_much-exercises.html');

INSERT INTO linksite(materia, tipo, linksite) VALUES(7, 'vazio', 'Nenhum site');

INSERT INTO materia(nome) VALUES('Subjunctive');

INSERT INTO flashcard(materia, frente, tras) VALUES(8, 'Uso 1 ', 'Subjuntivo = infinitive without to!! Situações/condições hiotéticas, imaginárias');
INSERT INTO flashcard(materia, frente, tras) VALUES(8, 'Uso 2', 'Desejo');
INSERT INTO flashcard(materia, frente, tras) VALUES(8, 'Uso 3', 'Comandos, sugestões, conselhos, urgência');
INSERT INTO flashcard(materia, frente, tras) VALUES(8, 'Uso 4', 'Expressões fixas');

INSERT INTO exercicio(materia, linksite) VALUES(8, 'https://www.englishpage.com/minitutorials/subjunctiveexercise.htm');

INSERT INTO linksite(materia, tipo, linksite) VALUES(8, 'youtube', 'https://www.youtube.com/watch?v=Z3RIaUcY8-w');


INSERT INTO materia(nome) VALUES('Travel, trip, journey, voyage');

INSERT INTO flashcard(materia, frente, tras) VALUES(9, 'Travel', 'Viagem longa. É um verbo ou adjetivo');
INSERT INTO flashcard(materia, frente, tras) VALUES(9, 'Trip', 'Viagem curta. É usado com "to go in a ___" ');
INSERT INTO flashcard(materia, frente, tras) VALUES(9, 'Journey', 'Jornada/Viagem espiritual');
INSERT INTO flashcard(materia, frente, tras) VALUES(9, 'Voyage', 'Expedição ao mar/espaço');

INSERT INTO exercicio(materia, linksite) VALUES(9, 'Nenhum exercício');

INSERT INTO linksite(materia, tipo, linksite) VALUES(9, 'youtube', 'https://www.youtube.com/watch?v=cGUkwiwM2UQ');

INSERT INTO materia(nome) VALUES('Make VS Do VS Have VS Cause VS Take');

INSERT INTO flashcard(materia, frente, tras) VALUES(10, 'Make', 'A phone call. An impression. A plan. A excuse. Bed. Change. Mistakes');
INSERT INTO flashcard(materia, frente, tras) VALUES(10, 'Do', 'Activities. A exercise. Housework/work. A job. A sport');
INSERT INTO flashcard(materia, frente, tras) VALUES(10, 'Have', 'An impression. Impact. Effect');
INSERT INTO flashcard(materia, frente, tras) VALUES(10, 'Cause', 'Trouble. Accident. Problem. A lot of...');
INSERT INTO flashcard(materia, frente, tras) VALUES(10, 'Take', 'A course');

INSERT INTO exercicio(materia, linksite) VALUES(10, 'https://www.ecenglish.com/learnenglish/lessons/make-do-get');

INSERT INTO linksite(materia, tipo, linksite) VALUES(10, 'vazio', 'Nenhum site');