using {Sample_CAPM_Project1.db as customermodel} from '../db/Schema';

service CustomerService{
     entity Customer as projection on customermodel.Customer;
     entity Order as projection on customermodel.Order;
}
