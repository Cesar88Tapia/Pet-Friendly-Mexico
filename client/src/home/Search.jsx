import React from 'react';
import { Link } from 'react-router-dom';

import {darkBlack, white} from 'material-ui/styles/colors';
import FlatButton from 'material-ui/FlatButton';
import TextField from 'material-ui/TextField';

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: '',
      searchResults: []
    }
    this.handleInputChange = this.handleInputChange.bind(this);
  }

  handleInputChange(e) {
    this.props.handleSearchInputChange(e.target.value);
    this.setState({
      value: e.target.value
    });
  }

  render(){
    const { value } = this.state;
    return(
      <div className="search">
        Búsqueda   <br></br>
        <TextField className="search-box"
                   floatingLabelText="Escribe el nombre del lugar..."
                   underlineStyle={{white}}
                   fulllength="true"
                   style={{color:darkBlack}} />
                 <Link to="/searchresults"><FlatButton onClick={(e) => this.handleInputChange(e)}
                    label="Go!"
                    className="search-button"
                    style={{color:darkBlack}} />
                </Link>

      </div>
    );

  }
}

export default Search;
