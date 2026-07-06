namespace Sample_CAPM_Project1.db;
using { temporal } from '@sap/cds/common';

aspect commonfields{
    createdAt : Timestamp;
    createdBy : String(100);
    modifiedAt : Timestamp;
    modifiedBy : String(100);
}
entity Customer: commonfields, temporal {
    key customerId : UUID;
        name       : String(30);
        address    : String(200);
        phone      : String(20);
        age        : String(3);
        // orders: association to many Order on orders.customer_name = $self;
        orders: Composition of many Order on orders.customer_name = $self;
}
entity Order: commonfields, temporal {
    key orderId : UUID;
        customer_name : association to Customer; // This field establishes a Foreign Key relationship with the Customer entity
}