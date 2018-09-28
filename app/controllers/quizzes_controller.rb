require 'open-uri'
class QuizzesController < ApplicationController
  def top
  end

  def hint
    profs = [90001,90002,90003,90004,90005,90006,90007,90008,90009,90010,90012,90013,90014,
      90015,90016,90017,90018,90019,90020,90021,90022,90023,90024,90025,90026,90027,90028,90029,
      90030,90031,90032,90033,90034,90035,90036,90037,90038,90039,90040,90041,90042,90043,90044,
      90045,90046,90047,90048,90049,90050,90051,90052,90053,90054,90055,90056,90057,90058,90059,
      90060,90061,90062,90063,90064,90065,90066,90067,90068,90069,90070,90071,90072,90073,90074,
      90075,90076,90077,90078,90079,90080,90081,90082,90083,90084,90085,90086,90087,90088,90089,
      90090,90091,90092,90093,90094,90095,90096,90097,90098,90099,90100,90101,90102,90104,90105,
      90106,90107,90108,90109,90110,90111,90112,90113,90117,90118]

    loop do
      @id = profs.sample.to_s
      url = 'http://www.u-aizu.ac.jp/research/faculty/detail?cd=' + @id
      html = open(url).read
      doc = Nokogiri::HTML.parse(html, nil, 'utf-8')

      @position = doc.xpath("//dl[@class='dl-horizontal']")[1].xpath("dd").text # 職位
      @field = doc.xpath("//dl[@class='dl-horizontal']")[6].xpath("dd").text # 研究分野
      @hobby = doc.xpath("//dl[@class='dl-horizontal']")[11].xpath("dd").text # 趣味
      @dream = doc.xpath("//dl[@class='dl-horizontal']")[12].xpath("dd").text # 子供時代の夢
      @motto = doc.xpath("//dl[@class='dl-horizontal']")[14].xpath("dd").text # 座右の銘
      @fbook = doc.xpath("//dl[@class='dl-horizontal']")[15].xpath("dd").text # 愛読書
      @message = doc.xpath("//dl[@class='dl-horizontal']")[16].xpath("dd").text # 学生へのメッセージ

      if @position.empty? || @field.empty? || @hobby.empty? || @dream.empty? ||
        @motto.empty? || @fbook.empty? || @message.empty? || @hobby.include?('きのこ')
      else
        break
      end
    end
  end

  def ans
    @id = params[:id]
    url = 'http://www.u-aizu.ac.jp/research/faculty/detail?cd=' + @id
    html = open(url).read
    doc = Nokogiri::HTML.parse(html, nil, 'utf-8')

    name = doc.xpath("//span[@class='headline-primary']").text
    @first = name.split("　")[0]
    if name.count("　") == 2
      @last = name.split("　")[1] + name.split("　")[2]
    else
      @last = name.split("　")[1]
    end
    @img = 'http://www.u-aizu.ac.jp/upload/user/' + params[:id] + '.jpg'
  end
end
