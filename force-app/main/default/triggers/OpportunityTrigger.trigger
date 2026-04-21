trigger OpportunityTrigger on Opportunity (before insert, before update) {
    // Delega a lógica para a classe de serviço
    OpportunityDiscountAssigner.applyDiscounts(Trigger.new);
}