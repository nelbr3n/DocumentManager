# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@tagEvent = ->
	tagContainer = document.getElementsByClassName("tag-elements")[0]
	tagInput= document.getElementsByClassName("tag-input")[0]
	onKeyPressFun =(e) ->
		if e.keyCode == 13 
			e.preventDefault()
			if $(tagInput).val() != ""
				tag = document.createElement("div")
				tag.className = "tag-element"
				tagText = document.createElement("span")
				tagText.textContent =$(tagInput).val()
				tagText.className = "tag-text";
				tag.appendChild(tagText)
				closeIcon = document.createElement("i")
				closeIcon.className = "tiny material-icons delete-tag"
				closeIcon.textContent = "close"
				close =(ev) ->
					this.parentElement.remove()
				closeIcon.onclick = close
				tag.appendChild(closeIcon)
				tagContainer.appendChild(tag)
				$(tagInput).val("")
		
	if tagInput
		tagInput.onkeypress = onKeyPressFun

@onChangeReceiverDepartment= (departmentId)->

	usersReceiverSelect  = document.getElementsByClassName("receiver-select")[0]

	parent = usersReceiverSelect.parentElement
	select = $(usersReceiverSelect).find(".receiver-select").clone()
	select.empty()
	select[0].disabled = false
	usersReceiverSelect.remove()
	gon.usersReceiver.map((user,index) ->
		
			if parseInt(user.department_id)== parseInt(departmentId)
				option = document.createElement("option")
				option.setAttribute("value",user.id)
				option.textContent = user.username+"-"+user.email
				select[0].appendChild(option)
			
		)
	parent.appendChild(select[0])
	$(select).material_select()

	statusesReceiverSelect  = document.getElementsByClassName("statusesReceiver-select")[0]
	parent2 = statusesReceiverSelect.parentElement
	select2 = $(statusesReceiverSelect).find(".statusesReceiver-select").clone()
	select2.empty()
	select2[0].disabled = false
	statusesReceiverSelect.remove()
	gon.statusesReceiver.map((status,index) ->
		
			if parseInt(status.department_id)== parseInt(departmentId)
				option2 = document.createElement("option")
				option2.setAttribute("value",status.id)
				option2.textContent = status.description
				select2[0].appendChild(option2)
			
		)
	parent2.appendChild(select2[0])
	$(select2).material_select()



	