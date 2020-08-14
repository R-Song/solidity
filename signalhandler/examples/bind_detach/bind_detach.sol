pragma solidity ^0.6.9;

// Testing bind and detach functionality.
contract Emitter {
    signal Alert();
    function send_alert() public view {
        emitsig Alert().delay(0);
    }
}
contract Receiver {
    uint data;
    address source;
    slot HandleAlert() {
        data = 0;
    }
    function set_source(address addr) public {
        source = addr;
    }
    function bind_to_alert() public view {
        HandleAlert.bind(source.Alert);
    }
    function detach_from_alert() public view {
        HandleAlert.detach(source.Alert);
    }
}