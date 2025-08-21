public without sharing class ProductTriggerHandler implements ProductHandler {
    private boolean triggerIsExecuting;
    private integer triggerSize;
    public ProductTriggerHelper helper;
    public ProductTriggerHandler(boolean triggerIsExecuting, integer triggerSize) {
        this.triggerIsExecuting = triggerIsExecuting;
        this.triggerSize = triggerSize;
        this.helper = new ProductTriggerHelper();
    }
    public void beforeInsert(List<Product2> newProdutos) {
        // helper.AdicionarPriceBookEntry(newProdutos);
    }
    public void beforeUpdate(List<Product2> oldProdutos, List<Product2> newProdutos, Map<ID, SObject> oldProdutoMap, Map<ID, SObject> newProdutoMap) {
        // helper.doTask3();
        // helper.doTask4();
    }
    public void beforeDelete(List<Product2> oldProdutos, Map<ID, SObject> oldProdutoMap) {
        // helper.doTask5();
        // helper.doTask1();
    }
    public void afterInsert(List<Product2> newProdutos, Map<ID, SObject> newProdutoMap) {
        helper.AdicionarPriceBookEntry(newProdutos);
    }
    public void afterUpdate(List<Product2> oldProdutos, List<Product2> newProdutos, Map<ID, SObject> oldProdutoMap, Map<ID, SObject> newProdutoMap) {
        // helper.doTask4();
        // helper.doTask5();
    }
    public void afterDelete(List<Product2> oldProdutos, Map<ID, SObject> oldProdutoMap) {
        // helper.doTask3();
        // helper.doTask1();
    }
    public void afterUndelete(List<Product2> newProdutos, Map<ID, SObject> newProdutoMap) {
        // helper.doTask4();
        // helper.doTask2();
    }
}