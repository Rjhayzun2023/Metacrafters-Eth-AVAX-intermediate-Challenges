import { ethers } from 'ethers';

// Check if MetaMask is installed and connected
async function checkMetaMask() {
  if (typeof window.ethereum !== 'undefined') {
    // Connect to MetaMask
    try {
      // Request user's permission to access their MetaMask accounts
      await window.ethereum.request({ method: 'eth_requestAccounts' });

      // Create an ethers provider using MetaMask
      const provider = new ethers.providers.Web3Provider(window.ethereum);

      // Get the signer (account)
      const signer = provider.getSigner();

      // Get the connected account address
      const address = await signer.getAddress();

      console.log(`Connected to MetaMask with address: ${address}`);
      return signer; // Return the signer object for further interactions
    } catch (error) {
      console.error('Error connecting to MetaMask:', error);
    }
  } else {
    console.error('MetaMask not detected. Please install MetaMask and refresh the page.');
  }
}

// Example usage
async function connectToMetaMask() {
  const signer = await checkMetaMask();

  // You can now use the `signer` to interact with Ethereum and sign transactions.
  // For example, you can use it to send transactions, call contract functions, etc.
  // Here's an example of getting the connected account's balance:
  const balance = await signer.getBalance();
  console.log(`Account balance: ${ethers.utils.formatEther(balance)} ETH`);
}

// Call the connect function to initiate the connection
connectToMetaMask();
