public without sharing class TarefaTriggerHelper {
    public TarefaTriggerHelper() {
        // logica do construtor
    }

    public void verificarTarefaTrigger(List<Task> tarefas) {
        //verifica se a tarefa ja tem um caso relacionado
        List<Task> listaTarefas = [SELECT WhatId, Subject FROM Task WHERE WhatId != null AND What.Type = 'Case'];
            
        for(Task tarefa : tarefas) {

            for(Task iTarefa : listaTarefas) {

                if(tarefa.WhatId == iTarefa.WhatId) {
                    // Se já existe uma tarefa em aberto nesse caso, adiciona erro
                    tarefa.addError('Já existe uma tarefa em aberto nesse caso. Encerre-a antes de abrir uma nova.');
                    System.debug('Tarefa já existe para o caso: ' + tarefa.WhatId);               
                }
            }
        }
    }
    
}