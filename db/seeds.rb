ALUNOS = 16
PROFESSORES = 8
TURMAS = 16
TURMADISCIPLINAS = TURMAS * 4
MATRICULADISCIPLINAS = ALUNOS * TURMADISCIPLINAS
AVALIACOES = MATRICULADISCIPLINAS * 4 * 2 # notas * [prova, recuperacao]

Secretario.create email: 'admin@example.com', password: 'password', superadmin: true
Secretario.create email: 'secretario@example.com', password: 'secretario'

(1..ALUNOS).to_a.each { Aluno.create nome: Faker::Name.name, pai: Faker::Name.name, data_nascimento: Time.at(rand * Time.now.to_i), naturalidade: Faker::Lorem.sentence(2), endereco: Faker::Lorem.sentence(5), telefone: Faker::PhoneNumber.phone_number }

(1..PROFESSORES).to_a.each { Professor.create nome: Faker::Name.name, matricula_estadual: Faker::Number.number(8), formacao: Faker::Lorem.sentence(10), email: Faker::Internet.email, telefone: Faker::PhoneNumber.phone_number, cpf: Faker::Number.number(30) }

turnos = ['Manhã', 'Tarde', 'Noite'].cycle
turmaletras = [*'a'..'z'].cycle
series = [*1..8].cycle
(1..TURMAS).to_a.each {	Turma.create turno: turnos.next , serie: series.next, turma: turmaletras.next }

turmas = Turma.all.to_a.cycle
professores = Professor.all.to_a.cycle
disciplinas = ['Português', 'Matemática', 'História', 'Geografia'].cycle
(1..TURMADISCIPLINAS).to_a.each { Turmadisciplina.create turma: turmas.next, professor: professores.next, cargahoraria: Random.rand(40), disciplina: disciplinas.next, descricao: Faker::Lorem.sentence(20) }

alunos = Aluno.all.to_a.cycle
turmadisciplinas = Turmadisciplina.all.to_a.cycle
(1..MATRICULADISCIPLINAS).to_a.each { Matriculadisciplina.create matricula: alunos.next.matricula, turmadisciplina: turmadisciplinas.next }

tipoavaliacoes = ['Prova', 'Recuperação'].cycle
matriculadisciplinas = Matriculadisciplina.all.to_a.cycle

bimestres = [*1..4].cycle
(1..AVALIACOES).to_a.each { Avaliacao.create tipoavaliacao: tipoavaliacoes.next, nota: Random.rand(0.0..10.0), matriculadisciplina: matriculadisciplinas.next, bimestre: bimestres.next }
