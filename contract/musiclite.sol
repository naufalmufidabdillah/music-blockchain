// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MusicLite {
    struct Song {
        uint256 id;
        string title;
        string artistName;
        string ipfsCid; 
        uint256 price;
        address payable artistWallet; 
    }

    Song[] public songs;
    
    // Mapping untuk menyimpan siapa saja yang sudah beli lagu
    mapping(uint256 => mapping(address => bool)) public songOwners;

    event SongSold(uint256 songId, address buyer, uint256 amount);

    function uploadSong(string memory _title, string memory _artistName, string memory _ipfsCid, uint256 _price) public {
        songs.push(Song({
            id: songs.length,
            title: _title,
            artistName: _artistName,
            ipfsCid: _ipfsCid,
            price: _price,
            artistWallet: payable(msg.sender)
        }));
    }

    function buySong(uint256 _id) public payable {
        require(_id < songs.length, "Lagu tidak ditemukan");
        // require(!songOwners[_id][msg.sender], "Anda sudah memiliki lagu ini!"); // Opsional: Boleh beli lagi buat donasi

        Song memory song = songs[_id];
        require(msg.value >= song.price, "Uang tidak cukup!");

        song.artistWallet.transfer(msg.value);
        
        // Catat kepemilikan
        songOwners[_id][msg.sender] = true; 
        
        emit SongSold(_id, msg.sender, msg.value);
    }

    function getSongCount() public view returns (uint256) {
        return songs.length;
    }
    
    // Cek apakah user sudah beli
    function isOwner(uint256 _songId, address _user) public view returns (bool) {
        return songOwners[_songId][_user];
    }
}