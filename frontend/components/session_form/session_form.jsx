import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			username: "username",
			password: "password",
			email: "email"

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
			<ul className="errors">
				{this.props.errors.map((error, i) => (
					<li className="errors" key={`error-${i}`}>
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
							/>
					<br/>
				</div>
			);
		}
	}

	render() {
		return (
			<div className="login-form-container">
				<form id='session-form'
					onSubmit={this.handleSubmit}
					className="login-form-box">
					<h2 className="session-form-title">
						{this.props.formType}
					</h2>
					<br/>
					<div className="login-form">
						{this.addEmailInput()}
							<input type="text"
								value='username'
								onChange={this.update("username")}
								className="login-input"
								value={this.state.username}/>
						<br/>
							<input type="text"
								value={this.state.password}
								onChange={this.update("password")}
								className="login-input"
								value={this.state.password} />
						<br/>
						<input className='submit-button' type="submit" value="Submit" />
						{this.renderErrors()}
					</div>
				</form>
			</div>
		);
	}
}

export default withRouter(SessionForm);
