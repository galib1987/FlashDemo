module DataHelper

  # Read basics on YAML
  def data_yml_hash
    @data_yml = YAML.load_file "#{data_default_directory}/#{yml_file}"
  end

# Read basics on excel parsing
# def data_excel_hash
#     dir_to_excel = Dir.pwd + '/lib/config/data'
#     #@read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/#{excel_file}")
#     @read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/ELIS_External_Test_Data.xlsx")
#     sheet1=@read_workbook['Sheet1']
#     table_hash = sheet1.get_table(["username","password","my_status_is","reason_for_application","a_number","lastname","firstname","middlename","in_care_of_name","apt","apt_number"])
#     array_of_hashmaps = table_hash[:table]
#     array_of_hashmaps.length.times do |i|
#       currenthash = array_of_hashmaps[i]
#
#     end
#
# end



  # # Read basics on excel parsing
  # def data_excel_hash (data_sheet)
  #   workbook = RubyXL::Parser.parse data_default_directory+'/'+excel_file
  #   sheet = workbook[data_sheet]
  #   header_row = sheet.sheet_data[0]
  #   @data_excel = sheet.get_table(header_row)
  # end

  # Json parsing reference
  def data_json_hash
    @data_json = JSON.parse data_default_directory+'/'+json_file
  end

  def set_data_directory(dir)
    @data_directory = dir
  end


  private

  def yml_file
    ENV['DATA_YML_FILE']? ENV['DATA_YML_FILE'] : 'Elis_Test_data.yml'
  end


  # def excel_file
  #   ENV['DATA_EXCEL_FILE']?ENV['DATA_EXCEL_FILE'] : 'default.xlsx'
  # end

  def json_file
    ENV['DATA_JSON_FILE']?ENV['DATA_JSON_FILE'] : 'default.json'
  end

  def xml_file
    ENV['DATA_XML_FILE']?ENV['DATA_XML_FILE'] : 'default.xml'
  end


  def data_default_directory
    @data_directory ||= 'lib/config/data'
  end


  class << self

  attr_accessor :data_yml,:data_excel,:data_json,:data_xml, :data_directory

  end



end