ALUNOS = 16
MATRICULAS = ALUNOS
PROFESSORES = 8
DISCIPLINAS = 4
TURMAS = 16
MATRICULADISCIPLINAS = MATRICULAS * DISCIPLINAS
AVALIACOES = MATRICULADISCIPLINAS * 4 * 2 # notas * [prova, recuperacao]
TURMADISCIPLINAS = TURMAS * DISCIPLINAS

Secretario.create email: 'admin@example.com', password: 'password', superadmin: true
Secretario.create email: 'secretario@example.com', password: 'secretario'

(1..ALUNOS).to_a.each { Aluno.create nome: Faker::Name.name }

alunos = Aluno.all.to_a.cycle
(1..MATRICULAS).to_a.each { Matricula.create ano_letivo: 2014, aluno: alunos.next }

(1..PROFESSORES).to_a.each { Professor.create nome: Faker::Name.name, matricula_estadual: Faker::Number.number(8), formacao: Faker::Lorem.sentence(10), email: Faker::Internet.email, telefone: Faker::PhoneNumber.phone_number, cpf: Faker::Number.number(30)}
(1..DISCIPLINAS).to_a.each { |i| Disciplina.create nome: ['Português', 'Matemática', 'História', 'Geografia'][i-1], cargahoraria: Random.rand(40) }

turnos = ['Manhã', 'Tarde', 'Noite'].cycle
turmaletras = [*'a'..'z'].cycle
series = [*1..8].cycle
(1..TURMAS).to_a.each { Turma.create turno: turnos.next , serie: series.next, turma: turmaletras.next }

turmas = Turma.all.to_a.cycle
professores = Professor.all.to_a.cycle
disciplinas = Disciplina.all.to_a.cycle
(1..TURMADISCIPLINAS).to_a.each { Turmadisciplina.create turma: turmas.next, professor: professores.next, disciplina: disciplinas.next, descricao: Faker::Lorem.sentence(20) }

matriculas = Matricula.all.to_a.cycle
turmadisciplinas = Turmadisciplina.all.to_a.cycle
(1..MATRICULADISCIPLINAS).to_a.each { Matriculadisciplina.create matricula: matriculas.next, turmadisciplina: turmadisciplinas.next }

tipoavaliacoes = ['Prova', 'Recuperação'].cycle
matriculadisciplinas = Matriculadisciplina.all.to_a.cycle

(1..AVALIACOES).to_a.each { Avaliacao.create tipoavaliacao: tipoavaliacoes.next, nota: Random.rand(0.0..10.0), matriculadisciplina: matriculadisciplinas.next }
