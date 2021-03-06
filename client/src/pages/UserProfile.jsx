import React from 'react'
import axios from 'axios';
import {Link} from 'react-router-dom';
import {darkBlack, black} from 'material-ui/styles/colors';
import Header from '../home/Header.jsx';
import AddPetProfile from '../components/user/AddPetProfile.jsx';

export default class UserProfile extends React.Component {
  constructor(props) {
    super(props);
      this.state = {
        pet: []
      }
      this.postPetProfile = this.postPetProfile.bind(this);
    }


    add() {
      this.props.addInput(this.state.petName,
                          this.state.age,
                          this.state.breed,
                          this.state.vaccines,
                          this.state.dewormed,
                          this.state.smallDescription)
}

    componentDidMount() {
      this.postPetProfile();
    }

    postPetProfile(petName, age, breed, vaccines, dewormed, smallDescription) {
      axios.post('/profile', {
        petName : petName,
        age : age,
        breed : breed,
        vaccines : vaccines,
        dewormed : dewormed,
        smallDescription : smallDescription
        })
        .then(res => {
          console.log(res);
          console.log(res.data);
        })
      }


      render() {
        return (
          <div className="pet-sublayout">
            <div>
              <Header />
            </div>
            <h3 id="pet-profile-text">¡Crea el perfil de tu Mascota!</h3>
            <div>
              <AddPetProfile postPetProfile={this.postPetProfile}/>
            </div>
          </div>
        )
      }
    }
