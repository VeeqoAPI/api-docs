# Group Shipments

Information about creating shipments in the API.

Here is a list of the supported carriers and their IDs. If the carrier you intend to use isn't supported by Veeqo, then you should use the carrier 'Other' instead:

**1**: Royal Mail

**2**: FedEx

**3**: Other

**4**: DPD

**5**: UPS

**6**: CityLink

**7**: USPS

**8**: Interlink Express

**9**: DHL

**10**: MyHermes

**11**: Australia Post

**12**: Parcelforce

**13**: TNT

**14**: Yodel

**15**: APC

**16**: DX

**17**: UK Mail

**18**: Israel Post

**19**: Canada Post

**23**: Hermes World

**24**: DHL DE (Deutsche Post)

## Shipment Collection [/shipments]

### Create a Shipment [POST]

+ Attributes
  + shipment:
    + tracking_number_attributes (object, optional) - Only required if you have a value for tracking_number
      + tracking_number: `12345679ABC` (string, required) - Tracking number for the shipment (if applicable)
    + carrier_id: `3` (number, required) - Veeqo ID of the carrier for the shipment
    + notify_customer: `false` (boolean, required) - Whether to notify the buyer via email from Veeqo
    + update_remote_order: `false` (boolean, required) - Whether to update the remote store (if using an integrated solution such as Amazon)
  + allocation_id: `1` (number, required) - ID of the allocation
  + order_id: `1` (number, required) - ID of the order

+ Request (application/json)

            {
                "shipment": {
                    "tracking_number_attributes": {
                        "tracking_number": "12345679ABC"
                    },
                    "carrier_id": 3,
                    "notify_customer": false,
                    "update_remote_order": false
                },
                "allocation_id": 1,
                "order_id": 1
            }

+ Response 201 (application/json)

  + Body

            {
                "id": 3,
                "created_at": "2016-11-14T15:05:35.709Z",
                "allocation_id": 1,
                "carrier_id": 3,
                "shipped_by_id": 1402,
                "weight": 20,
                "notify_customer": false,
                "update_remote_order": false,
                "tracking_number": {
                    "id": 12618396,
                    "tracking_number":" 12345679ABC"
                },
                "order_id": 5753042,
                "carrier": {
                    "id": 3,
                    "name": "Other"
                },
                "outbound_label_charges": {
                    "unit": "USD",
                    "value": 5.52
                }

            }

## Shipment [/shipments/{id}]

+ Parameters
  + id (integer)

### Delete [DELETE]

+ Response 204
