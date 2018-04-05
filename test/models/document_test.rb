require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # TODO
  # Implementar mas pruebas para todos los modelos
  # Crear el modelo ER de la base de datos para reimplementar
  # Optimizar metodos (Reimplementarlos de manera que sean Ruby friendly)
  
  test "documentCreate_nil_code" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: nil, subject: "Bravo", date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:documentCode].to_s
  end

  test "documentCreate_nil_subject" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: nil, date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:subject].to_s
  end

  test "documentCreate_nil_date" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: nil, content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:date].to_s
  end

  test "documentCreate_nil_content" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: "2017-08-18", content: nil, conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:content].to_s
  end

  test "documentCreate_nil_sender_id" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: nil, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:sender_id].to_s
  end

  test "documentCreate_nil_receiver_id" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: nil, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:receiver_id].to_s
  end

  test "documentCreate_nil_receiverStatus_id" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: nil, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:receiverStatus_id].to_s
  end

  test "documentCreate_nil_creator_id" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: nil, senderStatus: Status.all.first)
    assert !document.valid?
    refute document.valid?
    assert_match /blanco/, document.errors[:creator_id].to_s
  end

  test "documentCreate_nil_senderStatus" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: nil)
    assert !document.valid?
    refute document.valid?
    assert_match /debe existir/, document.errors[:senderStatus].to_s
  end

  test "documentCreate" do
    Department.new(departmentName: "Test").save
    Tag.new(tagName: "Test", department_id: Department.all.first.id).save
    Status.new(description: "Test", department_id: Department.all.first.id).save
    User.new(email: "superadmin@test.com", password: "superadmin", username: "Super Admin", department_id: Department.all.first.id, position: "Test", isGeneralAdmin: true, isDepartmentAdmin: false).save
    document = Document.new(documentCode: "DOC_110", subject: "Bravo", date: "2017-08-18", content: "Test", conversationId: 2, isSenderPrivate: true, isReceiverPrivate: true, sender_id: User.all.first.id, receiver_id: User.all.first.id, receiverStatus_id: Status.all.first.id, creator_id: User.all.first.id, senderStatus: Status.all.first)
    assert document.save
    document_copy = Document.find(document.id)
    assert_equal document.documentCode, document_copy.documentCode
    assert document.destroy
  end
end
