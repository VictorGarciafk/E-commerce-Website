export class Product {
    
    constructor(public name: string,
                public sku: string,
                public description: string,
                public active: boolean,
                public stock: number,
                public price: number,
                public imageUrl: string,
                public dateCreated: Date,
                public lastUpdated: Date
    ){

    }
}
