import React from 'react';
import axios from 'axios';

export default class VetProfile extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      vet: []
    };

  }

  getVetProfiles() {
    axios.get('/vetProfiles')
      .then(data => {
        console.log(data);
      })
      .catch(error => {
        console.log(error);
      });
  }

  postVetProfiles(firstName, lastName, phoneNumber, address) {
    axios.post('/vetProfiles', {
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      address: address
    })
    .then(() => {
      this.getVetProfile
    })
  }

  ComponentDidMount() {
    this.getVetProfile();
  }

  render(){
    return(
      <div>
        <div>
        <Switch>
          <Route exact path={this.props.match.path}
            render={(props) => <VetLayout {...props} data={this.state} /> } />
        </Switch>
        </div>
      </div>
    )
  }
};

//firstName, lastName, phoneNumber, address
