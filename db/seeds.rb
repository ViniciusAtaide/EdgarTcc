ALUNOS = 16
MATRICULAS = ALUNOS
PROFESSORES = 8
DISCIPLINAS = 4
TURMAS = 2
MATRICULADISCIPLINAS = MATRICULAS * DISCIPLINAS
TURMADISCIPLINAS = TURMAS * MATRICULADISCIPLINAS
(0..ALUNOS).to_a.each { Aluno.create nome: Faker::Name.name }
(0..MATRICULAS).to_a.each_with_index { |n, i| Matricula.create ano_letivo: 2014, aluno: Aluno.all.entries[i] }
(0..PROFESSORES).to_a.each { Professor.create nome: Faker::Name.name, matricula_estadual: Faker::Number.number(8), formacao: Faker::Lorem.words(10), email: Faker::Internet.email, telefone: Faker::PhoneNumber.phone_number, cpf: Faker::Number.number(30)}
(0..DISCIPLINAS).to_a.each { Disciplina.create nome: Faker::Name.name, cargahoraria: Random.rand(40) }
(0..TURMAS).to_a.each_with_index { |n, i| Turma.create turno: ['Manhã', 'Tarde', 'Noite'].to_a[i] , serie: Random.rand(8), turma: ('a'..'z').to_a[i] }
(0..TURMADISCIPLINAS).to_a.each_with_index { |n, i| Turmadisciplina.create turma: Turma.all.to_a.cycle.next, professor: Professor.all.to_a.each, disciplina: Disciplina.all.to_a.each }
# (0..MATRICULADISCIPLINAS).to_a.each { Matriculadisciplina.create matricula: Matricula.all.to_a.each, turmadisciplina: Turmadisciplina.all.to_a.each }
