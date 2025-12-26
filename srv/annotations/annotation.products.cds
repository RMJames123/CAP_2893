using {catalogService as projection} from '../catalog.service';

annotate projection.zproducts_2893 with {
    name             @title: 'Name';
    description      @title: 'Description';
    releasedate      @title: 'Release Date';
    discontinueddate @title: 'Discontined Date';
    price            @title: 'Price';
    height           @title: 'Height';
    width            @title: 'Width';
    depth            @title: 'Depth';
    unitofmeasure    @title: 'Unit of measure'
}
