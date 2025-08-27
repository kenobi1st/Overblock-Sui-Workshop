/*
/// Module: nft_workshop_overblock
module nft_workshop_overblock::nft_workshop_overblock;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


module nft_workshop_overblock::nft_workshop_overblock;

use std::string::String;

public struct Nft has key, store{
    
    id: UID,
    name: String,
    url: String
}

public entry fun mint(name: String, url: String, ctx: &mut TxContext) {

    let nft = Nft{

        id: object::new(ctx),
        name,
        url

    };

    transfer::public_transfer(nft, ctx.sender());

}