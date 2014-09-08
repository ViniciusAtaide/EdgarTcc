# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Aluno.create nome: 'vinicius'
a2 = Aluno.create nome: 'edgar'
d = Disciplina.create nome: 'portugues'
d2 = Disciplina.create nome: 'matematica'
m = Matricula.create aluno: a, ano_letivo: 2014
m2 = Matricula.create aluno: a2, ano_letivo: 2014
p = Professor.create nome: 'marcos', cpf: '090.923.493-94'
p2 = Professor.create nome: 'paulo', cpf: '091.921.492-92'
t = Turma.create turno: 'Noite', serie: 'Fundamental', turma: 'A'
t2 = Turma.create turno: 'Tarde', descricao: 'Medio', turma: 'B'
s = Secretario.create email: 'secretario@example.com', password: 'senha123'
s2 = Secretario.create email: 'admin@example.com', password: 'password', superadmin: true
td = Turmadisciplina.create turma: t, professor: p, disciplina: d
td2 = Turmadisciplina.create turma: t2, professor: p2, disciplina: d2
md = Matriculadisciplina.create matricula: m, turmadisciplina: td
md2 = Matriculadisciplina.create matricula: m2, turmadisciplina: td2
Avaliacao.create tipoavaliacao: 'prova', nota: 8.2, matriculadisciplina: md
Avaliacao.create tipoavaliacao: 'prova', nota: 8.4, matriculadisciplina: md2
