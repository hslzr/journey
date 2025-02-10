require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "should not save entry without title" do
    entry = Entry.new
    assert_not entry.save, "Saved the entry without a title"
  end

  test "should not save entry without content" do
    entry = Entry.new
    assert_not entry.save, "Saved the entry without content"
  end

  test "should set md5 checksum before saving" do
    entry = Entry.new(title: "Title", content: "Content")
    entry.save
    assert_not_nil entry.md5_checksum, "MD5 checksum is not set"
  end

  test "default status should be draft" do
    entry = Entry.new(title: "Title", content: "Content")
    entry.save
    assert_equal "draft", entry.status, "Default status is not draft"
  end

  test "should update md5 checksum when content is updated" do
    entry = Entry.new(title: "Title", content: "Content")
    entry.save
    old_checksum = entry.md5_checksum
    entry.content = "New content"
    entry.save
    assert_not_equal old_checksum, entry.md5_checksum, "MD5 checksum is not updated"
  end
end
