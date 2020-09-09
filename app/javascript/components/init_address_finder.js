const init_address_finder = () => {
  console.log("bye")
// (function() {
    var widget, initAddressFinder = function() {
        widget = new AddressFinder.Widget(
            document.getElementById('user_address'),
            '3BPFUMVAN497TQCXHWJ8',
            'AU', {
                "address_params": {
                    "gnaf": "1"
                },
                "empty_content": "No addresses were found. This could be a new address, or you may need to check the spelling. Learn more"
            }
        );

        widget.on('address:select', function(fullAddress, metaData) {
            document.getElementById('user_address').value = metaData.full_address;

        });


    };

    function downloadAddressFinder() {
      console.log("hi")

        var script = document.createElement('script');
        script.src = 'https://api.addressfinder.io/assets/v3/widget.js';
        script.async = true;
        script.onload = initAddressFinder;
        document.body.appendChild(script);
    };

    document.addEventListener('DOMContentLoaded', downloadAddressFinder);
};

export { init_address_finder };
