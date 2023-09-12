# Metacrafters-Eth-AVAX-intermediate-Challenges

## FOR modifier,functions,eventsVariable

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

2. Prepare the migration

   "2_deploy_migration.js" in `migrations` contains the following code:

   ```javascript
   var <contractName> = artifacts.require("<contractName>");
   module.exports = function(deployer) {
     deployer.deploy(<contractName>);
   }
   ```

4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

5. Test your contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let instance = await <contractName>.deployed()
   instance.greet()
   ```
