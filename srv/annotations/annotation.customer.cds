using {catalogService as projection} from '../catalog.service';

annotate projection.zcustomer_2893 with {
    email     @title: 'Email';
    firstname @title: 'First Name';
    lastname  @title: 'Last Name';
    country   @title: 'Country';
    imageurl  @title: 'Imagen URL';
}
