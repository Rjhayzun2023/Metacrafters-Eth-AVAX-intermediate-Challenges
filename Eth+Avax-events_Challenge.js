const { ethers } = require('ethers');
const contractAddress = 'Eth+Avax-events_Challeges';
const abi = require('./artifacts/contracts/Eth+Avax-events_Challeges.sol/Eth+Avax-events_Challeges.json').abi; 

async function main() {
    const provider = new ethers.providers.JsonRpcProvider('http://localhost:8545'); 
    const contract = new ethers.Contract(contractAddress, abi, provider);

    // Capture the events
    contract.on('Event1', (user, value) => {
        console.log('Event1 captured:');
        console.log('User:', user);
        console.log('Value:', value.toString());
    });

    contract.on('Event2', (eventName, eventId) => {
        console.log('Event2 captured:');
        console.log('Event Name:', eventName);
        console.log('Event ID:', eventId.toString());
    });

    contract.on('Event3', (timestamp) => {
        console.log('Event3 captured:');
        console.log('Timestamp:', timestamp.toString());
    });

    // Trigger the events from the smart contract
    await contract.triggerEvents();

    // Wait for a while to capture events 
    setTimeout(() => {
        console.log('Done capturing events.');
        process.exit(0);
    }, 5000);
}

main();
