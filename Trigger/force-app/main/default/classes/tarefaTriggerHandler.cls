public without sharing class TarefaTriggerHandler implements TarefaHandler {
    private boolean triggerIsExecuting;
    private integer triggerSize;
    public TarefaTriggerHelper helper;
    public TarefaTriggerHandler(boolean triggerIsExecuting, integer triggerSize) {
        this.triggerIsExecuting = triggerIsExecuting;
        this.triggerSize = triggerSize;
        this.helper = new TarefaTriggerHelper();
    }
    public void beforeInsert(List<Task> newTarefas) {
        helper.verificarTarefaTrigger(newTarefas);
    }
    public void beforeUpdate(List<Task> oldTarefas, List<Task> newTarefas, Map<ID, SObject> oldTarefaMap, Map<ID, SObject> newTarefaMap) {
        // helper.doTask3();
        // helper.doTask4();
    }
    public void beforeDelete(List<Task> oldTarefas, Map<ID, SObject> oldTarefaMap) {
        // helper.doTask5();
        // helper.doTask1();
    }
    public void afterInsert(List<Task> newTarefas, Map<ID, SObject> newTarefaMap) {
        // helper.doTask2();
        // helper.doTask3();
    }
    public void afterUpdate(List<Task> oldTarefas, List<Task> newTarefas, Map<ID, SObject> oldTarefaMap, Map<ID, SObject> newTarefaMap) {
        // helper.doTask4();
        // helper.doTask5();
    }
    public void afterDelete(List<Task> oldTarefas, Map<ID, SObject> oldTarefaMap) {
        // helper.doTask3();
        // helper.doTask1();
    }
    public void afterUndelete(List<Task> newTarefas, Map<ID, SObject> newTarefaMap) {
        // helper.doTask4();
        // helper.doTask2();
    }
}