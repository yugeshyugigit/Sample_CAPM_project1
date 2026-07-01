namespace Sample_CAPM_Project1.db;

entity Customer {
    key customerId : UUID;
        name       : String(30);
        address    : String(200);
        phone      : String(20);
        age        : String(3);
}
