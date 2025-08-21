public without sharing class ProductTriggerHelper {
    public ProductTriggerHelper() {
        // logica do construtor
    }

    public void AdicionarPriceBookEntry(List<Product2> produtos) {
        // lista para armazenar os PricebookEntries a serem inseridos
        List<PricebookEntry> pricebookEntries = new List<PricebookEntry>();

        // lista para pegar todas as moedas de PricebookEntry
        List<CurrencyType> currencyTypes = [SELECT IsoCode FROM CurrencyType WHERE IsActive = true];
        // System.debug('Currency Types: ' + currencyTypes);

        // Pega o Pricebook padrão
        Pricebook2 standardPricebook = [SELECT Id FROM Pricebook2 WHERE IsStandard = true LIMIT 1];

        // Lógica para adicionar um produto para cada moeda no priceBook
        for (Product2 produto : produtos) {
            for (CurrencyType iCurrency : currencyTypes) {
                PricebookEntry entry = new PricebookEntry();
                entry.Product2Id = produto.Id;
                entry.Pricebook2Id = standardPricebook.Id;
                entry.UnitPrice = 0;
                entry.CurrencyIsoCode = iCurrency.IsoCode;
                entry.IsActive = true;
                pricebookEntries.add(entry);
            }
        }

        insert pricebookEntries;

    }
}