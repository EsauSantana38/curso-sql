select date_format(t.data_inicio, "%d/%m/%Y") Início,
	c.nome_curso Curso,
    t.id_turma Turma,
    t.valor_turma Valor,
    date_format(t.data_termino, "%d/%m/%Y") Término   
from turmas t 
	inner join cursos c on t.id_curso = c.id_curso
order by t.data_inicio;