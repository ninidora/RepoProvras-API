CREATE TABLE "provas" (
	"id" serial NOT NULL,
	"nome" varchar(255) NOT NULL,
	"link" TEXT NOT NULL,
	"tipo_id" integer NOT NULL,
	"disciplina_id" integer NOT NULL,
	"professor_id" integer NOT NULL,
	CONSTRAINT "provas_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "disciplinas" (
	"id" serial NOT NULL,
	"nome" varchar(255) NOT NULL,
	CONSTRAINT "disciplinas_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "professores" (
	"id" serial NOT NULL,
	"nome" varchar(255) NOT NULL,
	CONSTRAINT "professores_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tipos" (
	"id" serial NOT NULL,
	"nome" varchar(255) NOT NULL,
	CONSTRAINT "tipos_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "provas" ADD CONSTRAINT "provas_fk0" FOREIGN KEY ("tipo_id") REFERENCES "tipos"("id");
ALTER TABLE "provas" ADD CONSTRAINT "provas_fk1" FOREIGN KEY ("disciplina_id") REFERENCES "disciplinas"("id");
ALTER TABLE "provas" ADD CONSTRAINT "provas_fk2" FOREIGN KEY ("professor_id") REFERENCES "professores"("id");







