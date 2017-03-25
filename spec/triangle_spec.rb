describe 'triangle.rb' do
  let(:equilateral_msg){ "正三角形ですね！\n" }
  let(:isosceles_msg){ "二等辺三角形ですね！\n" }
  let(:scalene_msg){ "不等辺三角形ですね！\n" }
  let(:not_msg){ "三角形じゃないです＞＜\n" }

  shared_examples 'shared' do
    it '3辺(sides)に対するメッセージ(msg)が正しいこと' do
      sides.permutation.to_a.uniq.each do |sides_pattern|
        args = "#{sides_pattern[0]} #{sides_pattern[1]} #{sides_pattern[2]}"
        expect(`ruby ./triangle.rb #{args}`).to eq msg
      end
    end
  end

  it_behaves_like 'shared' do
    let(:sides){ [4, 1, 3] }
    let(:msg){ not_msg }
  end
  it_behaves_like 'shared' do
    let(:sides){ [4, 2, 2] }
    let(:msg){ not_msg }
  end
  it_behaves_like 'shared' do
    let(:sides){ [4, 2, 3] }
    let(:msg){ scalene_msg }
  end
  it_behaves_like 'shared' do
    let(:sides){ [4, 3, 3] }
    let(:msg){ isosceles_msg }
  end
  it_behaves_like 'shared' do
    let(:sides){ [4, 3, 4] }
    let(:msg){ isosceles_msg }
  end
  it_behaves_like 'shared' do
    let(:sides){ [4, 4, 4] }
    let(:msg){ equilateral_msg }
  end
end