List<Task> tarefas = new List<Task>();
Case testCase = [SELECT Id FROM Case WHERE CaseNumber = '00001026' LIMIT 1];

for (Integer i = 0; i < 5; i++) {
    Task tarefa = new Task();
    tarefa.Subject = 'Test Task ' + (i + 1);
    tarefa.WhatId = testCase.Id;
    tarefas.add(tarefa);
}

insert tarefas;
