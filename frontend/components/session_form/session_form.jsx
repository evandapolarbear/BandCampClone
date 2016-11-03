import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			username: "",
			password: "",
			email: ""

		};
		this.handleSubmit = this.handleSubmit.bind(this);
	}

	update(field) {
		return e => this.setState({
			[field]: e.currentTarget.value
		});

	}

	handleSubmit(e) {
		e.preventDefault();
		const artist = this.state;
		this.props.processForm({artist});
	}



	renderErrors() {
		return(
			<ul>
				{this.props.errors.map((error, i) => (
					<li key={`error-${i}`}>
						{error}
					</li>
				))}
			</ul>
		);
	}

	addEmailInput(){

		if (this.props.formType==="signup") {
			return(
				<div>
						<input type="text"
							className="login-input"
							value={this.state.email}
							onChange={this.update("email")}
							value='email'/>
					<br/>
				</div>
			);
		}
	}

	render() {
		return (
			<div className="login-form-container">
				<form id='session-form' onSubmit={this.handleSubmit} className="login-form-box">
					<h2>
						{this.props.formType}
					</h2>
					<br/>
					{this.renderErrors()}
					<div className="login-form">
						{this.addEmailInput()}
							<input type="text"
								value={this.state.username}
								onChange={this.update("username")}
								className="login-input"
								value='artist name'/>
						<br/>
							<input type="text"
								value={this.state.password}
								onChange={this.update("password")}
								className="login-input"
								value="password" />
						<br/>
						<input className='submit-button' type="submit" value="Submit" />
					</div>
				</form>
			</div>
		);
	}
}

export default withRouter(SessionForm);
