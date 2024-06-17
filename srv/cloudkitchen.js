const cds = require('@sap/cds');
 
module.exports = cds.service.impl(async function(){
    const productapi = await cds.connect.to('API_PRODUCT_SRV');
 
    this.on('READ','Products', async req => {
        return  await productapi.run(req.query)
    })
   
})